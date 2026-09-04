.class Lcom/metamoji/nt/NtUnitEditUserInfoView$4;
.super Ljava/lang/Object;
.source "NtUnitEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitEditUserInfoView;->layoutLabel(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitEditUserLabelInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

.field final synthetic val$popupLabelInfo:Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

.field final synthetic val$targetUnit:Lcom/metamoji/nt/NtUnitController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;Lcom/metamoji/nt/NtUnitEditUserLabelInfo;Lcom/metamoji/nt/NtUnitController;)V
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

    .line 404
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$4;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    iput-object p2, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$4;->val$popupLabelInfo:Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

    iput-object p3, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$4;->val$targetUnit:Lcom/metamoji/nt/NtUnitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$4;->val$popupLabelInfo:Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;

    .line 408
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$4;->val$targetUnit:Lcom/metamoji/nt/NtUnitController;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 409
    iget-object v2, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$4;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v2, v1, v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$mgetLayoutLabelRect(Lcom/metamoji/nt/NtUnitEditUserInfoView;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;)Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 412
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;->setVisibility(I)V

    return-void

    .line 423
    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;->setTranslationX(F)V

    .line 424
    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;->setTranslationY(F)V

    .line 427
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$4;->val$popupLabelInfo:Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->checkVisibleLayer()V

    :cond_1
    return-void
.end method
