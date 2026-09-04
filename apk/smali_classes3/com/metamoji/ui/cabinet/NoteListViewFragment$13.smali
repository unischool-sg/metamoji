.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$13;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareShareButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1294
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$13;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1297
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$13;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fput_userDefaults(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/nt/NtUserDefaults;)V

    .line 1299
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$13;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_squeezeShare(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Z

    move-result p1

    .line 1303
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$13;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    .line 1299
    const-string v1, "MMJNtCabinetDispNoteType"

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 1300
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$13;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_shareBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v3, v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeShareBtnImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageButton;Z)V

    .line 1301
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$13;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_userDefaults(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    sget-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->MvDispNoteType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 1303
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$13;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_shareBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeShareBtnImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageButton;Z)V

    .line 1304
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$13;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_userDefaults(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    sget-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->MvDispNoteType_ShareOnly:Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 1306
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$13;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_squeezeShare(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fput_squeezeShare(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Z)V

    .line 1307
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$13;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->update(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    return-void
.end method
