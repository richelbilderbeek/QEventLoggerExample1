#include "dialog.h"
#include <QApplication>

#include "QEventLogger.h"

class MyApplication : public QApplication
{
  public:
  MyApplication(int &argc, char **argv)
    : QApplication(argc, argv),
      m_dialog{new Dialog},
      m_event_logger{nullptr}
  {
    const bool enable_screenshots = false;
    m_event_logger = new QEventLogger("./events", m_dialog, enable_screenshots);
    installEventFilter(m_event_logger);
    m_dialog->show();
  }
  ~MyApplication()
  {
    delete m_dialog;
  }
  Dialog * const m_dialog;
  QEventLogger * m_event_logger;
};

int main(int argc, char *argv[])
{
  MyApplication a(argc, argv);
  return a.exec();
}
