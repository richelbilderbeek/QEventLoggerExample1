#include "dialog.h"
#include <QApplication>

#include "QEventLogger.h"

class MyApplication : public QApplication
{
  public:
  MyApplication(int &argc, char **argv)
    : QApplication(argc, argv),
      w(new Dialog)
  {
    this->eventLogger = new QEventLogger("./events", w, true);
    this->installEventFilter(this->eventLogger);
    w->show();
  }
  ~MyApplication()
  {
    delete w;
  }
  QEventLogger * eventLogger;
  Dialog * w;
};

int main(int argc, char *argv[])
{
  MyApplication a(argc, argv);
  return a.exec();
}
