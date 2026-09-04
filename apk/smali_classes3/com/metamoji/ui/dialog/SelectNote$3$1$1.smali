.class Lcom/metamoji/ui/dialog/SelectNote$3$1$1;
.super Ljava/lang/Object;
.source "SelectNote.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/SelectNote$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/SelectNote$3$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 680
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 684
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote;->m_Timer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote;->m_Timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 686
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote;->m_Timer:Ljava/util/Timer;

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;

    if-eqz v0, :cond_1

    .line 691
    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Note:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    if-ne v2, v3, :cond_1

    .line 692
    iget-object v2, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v2, v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fput_currentItem(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)V

    .line 693
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/SelectNote;->onDone(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_1
    if-eqz v0, :cond_3

    .line 694
    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Folder:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    if-ne v2, v3, :cond_3

    .line 695
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 696
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$mgetFolderName(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote;->updateList()V

    goto/16 :goto_1

    :cond_3
    if-eqz v0, :cond_8

    .line 699
    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Back:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    if-ne v2, v3, :cond_8

    .line 700
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 701
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 702
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote;->updateList()V

    goto/16 :goto_1

    .line 703
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_cabinetFolderMode(Lcom/metamoji/ui/dialog/SelectNote;)Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 710
    iget-object v3, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    if-ne v0, v2, :cond_6

    .line 704
    iget-object v0, v3, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_nowDriveId(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/lang/String;

    move-result-object v0

    .line 707
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    if-nez v0, :cond_5

    .line 705
    iget-object v0, v1, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    goto :goto_0

    .line 707
    :cond_5
    iget-object v0, v1, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    .line 709
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote;->updateList()V

    goto/16 :goto_1

    .line 710
    :cond_6
    iget-object v0, v3, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_nowDriveId(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/lang/String;

    move-result-object v0

    .line 716
    iget-object v2, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    if-eqz v0, :cond_7

    .line 711
    iget-object v0, v2, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fput_nowDriveId(Lcom/metamoji/ui/dialog/SelectNote;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    .line 713
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote;->updateList()V

    goto/16 :goto_1

    .line 716
    :cond_7
    iget-object v0, v2, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote;->btnDriveList_Click()V

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x0

    if-eqz v0, :cond_a

    .line 718
    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_LocalDrive:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    if-ne v3, v4, :cond_a

    .line 719
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_folderPathMgr(Lcom/metamoji/ui/dialog/SelectNote;)Lcom/metamoji/ui/cabinet/FolderPathManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/FolderPathManager;->setVisibilty(I)V

    .line 720
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fput_nowDriveId(Lcom/metamoji/ui/dialog/SelectNote;Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    .line 722
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 723
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 725
    :cond_9
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote;->updateList()V

    goto/16 :goto_1

    :cond_a
    if-eqz v0, :cond_c

    .line 726
    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Template:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    if-ne v3, v4, :cond_c

    .line 727
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_folderPathMgr(Lcom/metamoji/ui/dialog/SelectNote;)Lcom/metamoji/ui/cabinet/FolderPathManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/FolderPathManager;->setVisibilty(I)V

    .line 728
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    .line 729
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 730
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 732
    :cond_b
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote;->updateList()V

    goto/16 :goto_1

    :cond_c
    if-eqz v0, :cond_e

    .line 733
    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_SharedDrive:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    if-ne v3, v4, :cond_e

    .line 734
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_folderPathMgr(Lcom/metamoji/ui/dialog/SelectNote;)Lcom/metamoji/ui/cabinet/FolderPathManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/cabinet/FolderPathManager;->setVisibilty(I)V

    .line 735
    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_content(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 736
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fput_nowDriveId(Lcom/metamoji/ui/dialog/SelectNote;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    .line 738
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 739
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 741
    :cond_d
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote;->updateList()V

    goto :goto_1

    :cond_e
    if-eqz v0, :cond_10

    .line 742
    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v0

    sget-object v3, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Share:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    if-ne v0, v3, :cond_10

    .line 743
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_folderPathMgr(Lcom/metamoji/ui/dialog/SelectNote;)Lcom/metamoji/ui/cabinet/FolderPathManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/FolderPathManager;->setVisibilty(I)V

    .line 744
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fput_nowDriveId(Lcom/metamoji/ui/dialog/SelectNote;Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    .line 746
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 747
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 749
    :cond_f
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote;->updateList()V

    .line 752
    :cond_10
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3$1$1;->this$2:Lcom/metamoji/ui/dialog/SelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3$1;->this$1:Lcom/metamoji/ui/dialog/SelectNote$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote;->updateDoneButton()V

    return-void
.end method
