.class Lcom/metamoji/ui/dialog/ScMergeNoteDialog$2;
.super Ljava/lang/Object;
.source "ScMergeNoteDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/ScMergeNoteDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ScMergeNoteDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$2;->this$0:Lcom/metamoji/ui/dialog/ScMergeNoteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 224
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$2;->this$0:Lcom/metamoji/ui/dialog/ScMergeNoteDialog;

    iget-object v0, p1, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_mergeButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->onDone(Landroid/view/View;)V

    return-void
.end method
