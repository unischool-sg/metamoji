.class Lcom/metamoji/un/text/UnTextUnit$1;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Lcom/metamoji/un/util/UnRubberBandSupport$IRubberBandSupportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 836
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$1;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hitTest(Lcom/metamoji/rb/RbRubberBandAction;Landroid/graphics/PointF;)Lcom/metamoji/rb/RbConstants$Activity;
    .locals 0

    .line 844
    invoke-virtual {p1}, Lcom/metamoji/rb/RbRubberBandAction;->activity()Lcom/metamoji/rb/RbConstants$Activity;

    move-result-object p1

    .line 847
    sget-object p2, Lcom/metamoji/rb/RbConstants$Activity;->BODY:Lcom/metamoji/rb/RbConstants$Activity;

    if-ne p2, p1, :cond_0

    .line 849
    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$1;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p2}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 850
    sget-object p1, Lcom/metamoji/rb/RbConstants$Activity;->NONE:Lcom/metamoji/rb/RbConstants$Activity;

    :cond_0
    return-object p1
.end method

.method public notifyInBoundsTapped(Landroid/graphics/PointF;Z)V
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$1;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0, p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$monTappedInBounds(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/PointF;Z)V

    return-void
.end method

.method public notifyOutOfBoundsTapped(Landroid/graphics/PointF;Z)Z
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$1;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0, p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$monTappedOutOfBounds(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/PointF;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onRubberBandChanged(Lcom/metamoji/df/controller/GeometricProps;)Ljava/lang/Boolean;
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$1;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/UnTextUnit;->rubberBandChanged(Lcom/metamoji/df/controller/GeometricProps;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
