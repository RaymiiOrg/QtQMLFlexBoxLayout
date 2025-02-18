#ifndef FLEXBACKEND_H
#define FLEXBACKEND_H

#include <QtDebug>
#include <QObject>
#include <QVariant>
#include <QQmlContext>

#include "flex/flexconfig.h"
#include "flex/flexnode.h"

#include "../Yoga.h"

using namespace Quite::Objects::Flex;

namespace Quite {
namespace Objects {

/*****************************************************************************/

class FlexBackend : public QObject {
  Q_OBJECT
  private:
    FlexConfig* config;
  public:
    explicit FlexBackend(QObject* parent = nullptr);
    virtual ~FlexBackend();
  public slots:
    QVariant createConfig();
    QVariant createNode();
    QVariant createNode(QVariant config);
    void collectGarbage(QVariant rootNode);
};

/*****************************************************************************/

} // namespace Objects
} // namespace Quite

#endif // FLEXBACKEND_H
