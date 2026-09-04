.class Lcom/metamoji/ui/common/UiColorSelectionView2$8;
.super Ljava/lang/Object;
.source "UiColorSelectionView2.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiColorSelectionView2;->setUIParts(Landroid/view/View;Landroid/view/View;Lcom/metamoji/ui/common/UiRadioContoller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

.field final synthetic val$bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

.field final synthetic val$leftButton:Landroid/view/View;

.field final synthetic val$rightButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiColorSelectionView2;Lcom/metamoji/ui/common/UiRadioContoller;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 3022
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$8;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    iput-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$8;->val$bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    iput-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$8;->val$leftButton:Landroid/view/View;

    iput-object p4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$8;->val$rightButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSetGroupChanged(I)V
    .locals 3

    .line 3025
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$8;->val$bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiRadioContoller;->idFromIndex(I)I

    move-result p1

    .line 3026
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$8;->val$bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    .line 3027
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$8;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->canPagePrev()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 3028
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$8;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->canPageNext()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 3029
    :goto_1
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$8;->val$leftButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3030
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$8;->val$rightButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
