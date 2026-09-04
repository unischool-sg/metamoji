.class Lcom/metamoji/ui/dialog/ImageEditDialog$1;
.super Ljava/lang/Object;
.source "ImageEditDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ImageEditDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/ImageEditDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ImageEditDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog$1;->this$0:Lcom/metamoji/ui/dialog/ImageEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog$1;->this$0:Lcom/metamoji/ui/dialog/ImageEditDialog;

    add-int/lit8 p2, p2, 0xa

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/dialog/ImageEditDialog;->showAlpha(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog$1;->this$0:Lcom/metamoji/ui/dialog/ImageEditDialog;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, 0xa

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    iput p1, v0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mAlphaResult:F

    return-void
.end method
