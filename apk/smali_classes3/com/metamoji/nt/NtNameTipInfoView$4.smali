.class Lcom/metamoji/nt/NtNameTipInfoView$4;
.super Ljava/lang/Object;
.source "NtNameTipInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNameTipInfoView;->layoutLabel(Ljava/lang/String;Lcom/metamoji/nt/NtNameTipLabelInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNameTipInfoView;

.field final synthetic val$popupLabelInfo:Lcom/metamoji/nt/NtNameTipLabelInfo;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNameTipInfoView;Lcom/metamoji/nt/NtNameTipLabelInfo;Ljava/lang/String;)V
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

    .line 420
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView$4;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    iput-object p2, p0, Lcom/metamoji/nt/NtNameTipInfoView$4;->val$popupLabelInfo:Lcom/metamoji/nt/NtNameTipLabelInfo;

    iput-object p3, p0, Lcom/metamoji/nt/NtNameTipInfoView$4;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView$4;->val$popupLabelInfo:Lcom/metamoji/nt/NtNameTipLabelInfo;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNameTipLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;

    .line 424
    iget-object v1, p0, Lcom/metamoji/nt/NtNameTipInfoView$4;->val$userId:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 425
    iget-object v1, p0, Lcom/metamoji/nt/NtNameTipInfoView$4;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$4;->val$popupLabelInfo:Lcom/metamoji/nt/NtNameTipLabelInfo;

    invoke-static {v1, v2, v0}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$mgetLayoutLabelRect(Lcom/metamoji/nt/NtNameTipInfoView;Lcom/metamoji/nt/NtNameTipLabelInfo;Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;)Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 428
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;->setVisibility(I)V

    return-void

    .line 430
    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;->setTranslationX(F)V

    .line 431
    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;->setTranslationY(F)V

    const/4 v1, 0x0

    .line 433
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
