.class Lcom/metamoji/ui/dialog/ImageEditDialog$3;
.super Ljava/lang/Object;
.source "ImageEditDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$scrollView:Lcom/metamoji/ui/UiScrollView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ImageEditDialog;Lcom/metamoji/ui/UiScrollView;)V
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

    .line 174
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog$3;->this$0:Lcom/metamoji/ui/dialog/ImageEditDialog;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ImageEditDialog$3;->val$scrollView:Lcom/metamoji/ui/UiScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog$3;->val$scrollView:Lcom/metamoji/ui/UiScrollView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/UiScrollView;->setInterceptPinchGesture(Z)V

    .line 178
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog$3;->this$0:Lcom/metamoji/ui/dialog/ImageEditDialog;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ImageEditDialog;->mImageEditor:Lcom/metamoji/ui/UiImageEditorView;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/UiImageEditorView;->setSelectMode(I)V

    .line 179
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog$3;->this$0:Lcom/metamoji/ui/dialog/ImageEditDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/ImageEditDialog;->updateSelectModeButtons()V

    return-void
.end method
