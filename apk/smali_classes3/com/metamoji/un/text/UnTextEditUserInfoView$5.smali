.class Lcom/metamoji/un/text/UnTextEditUserInfoView$5;
.super Ljava/lang/Object;
.source "UnTextEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextEditUserInfoView;->layoutLabel(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

.field final synthetic val$popupLabelInfo:Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

.field final synthetic val$targetUnit:Lcom/metamoji/un/text/UnTextUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;Lcom/metamoji/un/text/UnTextEditUserLabelInfo;Lcom/metamoji/un/text/UnTextUnit;)V
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

    .line 421
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$5;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$5;->val$popupLabelInfo:Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

    iput-object p3, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$5;->val$targetUnit:Lcom/metamoji/un/text/UnTextUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$5;->val$popupLabelInfo:Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;

    .line 425
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$5;->val$targetUnit:Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 426
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$5;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v2, v1, v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$mgetLayoutLabelRect(Lcom/metamoji/un/text/UnTextEditUserInfoView;Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;)Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 429
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;->setVisibility(I)V

    return-void

    .line 440
    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;->setTranslationX(F)V

    .line 441
    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;->setTranslationY(F)V

    .line 444
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$5;->val$popupLabelInfo:Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->checkVisibleLayer()V

    :cond_1
    return-void
.end method
