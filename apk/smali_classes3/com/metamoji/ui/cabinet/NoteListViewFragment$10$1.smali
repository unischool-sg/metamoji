.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Lcom/metamoji/noteanytime/MainActivity$IAllowedToParticipateBoxCompletionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$10;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$10;Landroid/view/View;)V
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

    .line 1217
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$10;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Z)V
    .locals 2

    .line 1220
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1$1;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
