.class Lcom/metamoji/ui/dialog/ShapeSettings$12;
.super Ljava/lang/Object;
.source "ShapeSettings.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ShapeSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

.field final synthetic val$mDialog:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ShapeSettings;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 403
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$12;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings$12;->val$mDialog:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSetGroupChanged(I)V
    .locals 3

    .line 406
    const-string v0, "color set group changed"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings$12;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottlesRadioGroup_Fill:Lcom/metamoji/ui/common/UiRadioContoller;

    sget-object v1, Lcom/metamoji/ui/dialog/ShapeSettings;->mBottlesIds_Fill:[I

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    .line 408
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$12;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->canPagePrev()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 409
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeSettings$12;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/ShapeSettings;->mColorSelectionView_Fill:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->canPageNext()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 410
    :goto_1
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$12;->val$mDialog:Landroid/view/View;

    sget v2, Lcom/metamoji/noteanytime/R$id;->paletteLeftButton_fill:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$12;->val$mDialog:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->paletteRightButton_fill:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
