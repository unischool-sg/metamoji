.class Lcom/metamoji/ui/dialog/PenSettings2$1;
.super Ljava/lang/Object;
.source "PenSettings2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PenSettings2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/PenSettings2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PenSettings2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$1;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 231
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$1;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtNoteController;->changePenSettings(Lcom/metamoji/nt/share/NtPenStyle;)V

    :cond_0
    return-void
.end method
