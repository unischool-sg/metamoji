.class Lcom/metamoji/un/image/UnImageUnit$1;
.super Ljava/lang/Object;
.source "UnImageUnit.java"

# interfaces
.implements Lcom/metamoji/un/util/UnRubberBandSupport$IRubberBandSupportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/image/UnImageUnit;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/image/UnImageUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/image/UnImageUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/metamoji/un/image/UnImageUnit$1;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hitTest(Lcom/metamoji/rb/RbRubberBandAction;Landroid/graphics/PointF;)Lcom/metamoji/rb/RbConstants$Activity;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public notifyInBoundsTapped(Landroid/graphics/PointF;Z)V
    .locals 0

    return-void
.end method

.method public notifyOutOfBoundsTapped(Landroid/graphics/PointF;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onRubberBandChanged(Lcom/metamoji/df/controller/GeometricProps;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
