.class Lcom/metamoji/un/text/UnTextUnit$11;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->setGeometricProps(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$moveXF:F

.field final synthetic val$moveYF:F


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2949
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$11;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput p2, p0, Lcom/metamoji/un/text/UnTextUnit$11;->val$moveXF:F

    iput p3, p0, Lcom/metamoji/un/text/UnTextUnit$11;->val$moveYF:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 2952
    new-instance v1, Lcom/metamoji/df/controller/GeometricProps;

    new-instance v0, Landroid/graphics/PointF;

    iget v2, p0, Lcom/metamoji/un/text/UnTextUnit$11;->val$moveXF:F

    iget v3, p0, Lcom/metamoji/un/text/UnTextUnit$11;->val$moveYF:F

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2, v2}, Lcom/metamoji/df/controller/GeometricProps;-><init>(Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 2953
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$11;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$msetGeometricPropsSelf(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/un/text/model/undo/ITextUndoManager;ZZZLjava/util/List;ZLjava/util/Map;Z)Z

    .line 2955
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$11;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->sendModifiedInfomation(Z)V

    .line 2957
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$11$1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextUnit$11$1;-><init>(Lcom/metamoji/un/text/UnTextUnit$11;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 2967
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$11;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2968
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$11;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fget_rubberBand(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/un/util/UnRubberBandSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/util/UnRubberBandSupport;->update()V

    :cond_0
    return-void
.end method
