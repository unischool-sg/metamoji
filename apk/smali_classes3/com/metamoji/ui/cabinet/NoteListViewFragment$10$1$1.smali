.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1$1;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1;->onCompletion(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1;Z)V
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

    .line 1220
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1;

    iput-boolean p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1$1;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1224
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/ui/PopupCommand;->DISPLAY_PARTICIPATION_CODE:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASSROOM_DISPLAY_PARTICIPATION_CODE:I

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_sd_add_member:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_sd_add_member:I

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    iget-boolean v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1$1;->val$enable:Z

    if-eqz v1, :cond_0

    .line 1229
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->DENY_TO_PARTICIPATE_BOX:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASSROOM_DENY_TO_PARTICIPATE_BOX:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_share_write_disable_n:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->menuicon_share_write_disable_n:I

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$10;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$10;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1;

    iget-object v3, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1;->val$v:Landroid/view/View;

    invoke-static {v1, v0, v2, v3}, Lcom/metamoji/noteanytime/MainActivity;->showActionMenu(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;)V

    return-void
.end method
