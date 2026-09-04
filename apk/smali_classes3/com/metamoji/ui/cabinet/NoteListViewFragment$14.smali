.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$14;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareSearchButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

.field final synthetic val$mainActivity:Lcom/metamoji/noteanytime/MainActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/noteanytime/MainActivity;)V
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

    .line 1323
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$14;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$14;->val$mainActivity:Lcom/metamoji/noteanytime/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$14;->val$mainActivity:Lcom/metamoji/noteanytime/MainActivity;

    invoke-virtual {v0, p1}, Lcom/metamoji/noteanytime/MainActivity;->openSearchMenu(Landroid/view/View;)V

    return-void
.end method
