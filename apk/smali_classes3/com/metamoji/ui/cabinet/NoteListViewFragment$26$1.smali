.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$26$1;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;

.field final synthetic val$resId:I

.field final synthetic val$viewHolder:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;I)V
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

    .line 2268
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26$1;->val$viewHolder:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;

    iput p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26$1;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2271
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26$1;->val$viewHolder:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;->_thumbnail:Landroid/widget/ImageView;

    iget v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26$1;->val$resId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
