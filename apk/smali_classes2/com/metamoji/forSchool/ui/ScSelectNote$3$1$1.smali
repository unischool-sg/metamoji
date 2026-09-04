.class Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;
.super Ljava/lang/Object;
.source "ScSelectNote.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 783
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 787
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote;->m_Timer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote;->m_Timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 789
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iput-object v1, v0, Lcom/metamoji/forSchool/ui/ScSelectNote;->m_Timer:Ljava/util/Timer;

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    if-eqz v0, :cond_1

    .line 794
    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Note:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    if-ne v2, v3, :cond_1

    .line 795
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v2, v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_currentItem(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)V

    .line 796
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->onDone(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 797
    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Folder:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    if-ne v2, v3, :cond_2

    .line 798
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$mgetFolderName(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateList()V

    goto/16 :goto_2

    :cond_2
    if-eqz v0, :cond_a

    .line 800
    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Back:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    if-ne v2, v3, :cond_a

    .line 801
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 802
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 803
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateList()V

    goto/16 :goto_2

    .line 804
    :cond_3
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;)Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 811
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    if-ne v0, v2, :cond_5

    .line 805
    iget-object v0, v3, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowDriveId(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/lang/String;

    move-result-object v0

    .line 808
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    if-nez v0, :cond_4

    .line 806
    iget-object v0, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    goto :goto_0

    .line 808
    :cond_4
    iget-object v0, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    .line 810
    :goto_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateList()V

    goto/16 :goto_2

    .line 811
    :cond_5
    iget-object v0, v3, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowDriveId(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/lang/String;

    move-result-object v0

    .line 824
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    if-eqz v0, :cond_8

    .line 812
    iget-object v0, v2, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_nowDriveId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/lang/String;

    move-result-object v0

    .line 821
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    if-eqz v0, :cond_7

    .line 814
    iget-object v0, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_activeGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 818
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    if-eqz v0, :cond_6

    .line 815
    iget-object v0, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    goto :goto_1

    .line 818
    :cond_6
    iget-object v0, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    goto :goto_1

    .line 821
    :cond_7
    iget-object v0, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    .line 823
    :goto_1
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateList()V

    goto/16 :goto_2

    .line 824
    :cond_8
    iget-object v0, v2, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;)Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 829
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    if-ne v0, v2, :cond_9

    .line 825
    iget-object v0, v3, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    .line 826
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_nowGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateList()V

    goto/16 :goto_2

    .line 829
    :cond_9
    iget-object v0, v3, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->btnDriveList_Click()V

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 831
    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_LocalDrive:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    if-ne v3, v4, :cond_b

    .line 832
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v3, v3, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v3, v3, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v3}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_folderPathMgr(Lcom/metamoji/forSchool/ui/ScSelectNote;)Lcom/metamoji/ui/cabinet/FolderPathManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/cabinet/FolderPathManager;->setVisibilty(I)V

    .line 833
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v2, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_nowDriveId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V

    .line 834
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$mgetGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_nowGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    .line 836
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 837
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateList()V

    goto/16 :goto_2

    :cond_b
    if-eqz v0, :cond_c

    .line 838
    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Template:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    if-ne v3, v4, :cond_c

    .line 839
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_folderPathMgr(Lcom/metamoji/forSchool/ui/ScSelectNote;)Lcom/metamoji/ui/cabinet/FolderPathManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/cabinet/FolderPathManager;->setVisibilty(I)V

    .line 840
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$mgetGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_nowGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    .line 842
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 843
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateList()V

    goto/16 :goto_2

    :cond_c
    if-eqz v0, :cond_d

    .line 844
    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_SharedDrive:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    if-ne v3, v4, :cond_d

    .line 845
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_folderPathMgr(Lcom/metamoji/forSchool/ui/ScSelectNote;)Lcom/metamoji/ui/cabinet/FolderPathManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/cabinet/FolderPathManager;->setVisibilty(I)V

    .line 846
    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_content(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 847
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_nowDriveId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V

    .line 848
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$mgetGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_nowGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    .line 850
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 851
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateList()V

    goto/16 :goto_2

    :cond_d
    if-eqz v0, :cond_e

    .line 852
    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Share:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    if-ne v3, v4, :cond_e

    .line 853
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v3, v3, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v3, v3, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v3}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_folderPathMgr(Lcom/metamoji/forSchool/ui/ScSelectNote;)Lcom/metamoji/ui/cabinet/FolderPathManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/cabinet/FolderPathManager;->setVisibilty(I)V

    .line 854
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v2, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_nowDriveId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V

    .line 855
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$mgetGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_nowGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    .line 857
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 858
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateList()V

    goto/16 :goto_2

    :cond_e
    if-eqz v0, :cond_f

    .line 859
    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBox:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    if-ne v3, v4, :cond_f

    .line 860
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v3, v3, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v3, v3, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v3}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_folderPathMgr(Lcom/metamoji/forSchool/ui/ScSelectNote;)Lcom/metamoji/ui/cabinet/FolderPathManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/cabinet/FolderPathManager;->setVisibilty(I)V

    .line 861
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v2, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_nowDriveId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V

    .line 862
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$mgetGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_nowGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    .line 864
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 865
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateList()V

    goto/16 :goto_2

    :cond_f
    if-eqz v0, :cond_10

    .line 866
    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxClass:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    if-ne v3, v4, :cond_10

    .line 867
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_folderPathMgr(Lcom/metamoji/forSchool/ui/ScSelectNote;)Lcom/metamoji/ui/cabinet/FolderPathManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/cabinet/FolderPathManager;->setVisibilty(I)V

    .line 868
    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_content(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 869
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_nowDriveId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V

    .line 870
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$mgetGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_nowGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    .line 872
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 873
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateList()V

    goto/16 :goto_2

    :cond_10
    if-eqz v0, :cond_11

    .line 874
    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxOld:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    if-ne v3, v4, :cond_11

    .line 875
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_folderPathMgr(Lcom/metamoji/forSchool/ui/ScSelectNote;)Lcom/metamoji/ui/cabinet/FolderPathManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/FolderPathManager;->setVisibilty(I)V

    .line 876
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_nowDriveId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_nowGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    .line 879
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 880
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateList()V

    goto :goto_2

    :cond_11
    if-eqz v0, :cond_12

    .line 881
    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxYear:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    if-ne v3, v4, :cond_12

    .line 882
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v3, v3, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v3, v3, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v3}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_folderPathMgr(Lcom/metamoji/forSchool/ui/ScSelectNote;)Lcom/metamoji/ui/cabinet/FolderPathManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/cabinet/FolderPathManager;->setVisibilty(I)V

    .line 883
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v2, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_nowDriveId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V

    .line 884
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$mgetGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_nowGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fput_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V

    .line 886
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_nowTags(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 887
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateList()V

    .line 890
    :cond_12
    :goto_2
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;->this$2:Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$mupdateDoneButton(Lcom/metamoji/forSchool/ui/ScSelectNote;)V

    return-void
.end method
