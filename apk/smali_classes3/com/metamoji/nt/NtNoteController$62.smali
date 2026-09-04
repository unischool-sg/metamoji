.class Lcom/metamoji/nt/NtNoteController$62;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->handleDirections(Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$bInsertPagesDirectionData:Ljava/util/List;

.field final synthetic val$directions:Ljava/util/List;

.field final synthetic val$observer:Lcom/metamoji/ns/direction/INsDirectionObserver;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 8978
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$62;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$62;->val$directions:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController$62;->val$observer:Lcom/metamoji/ns/direction/INsDirectionObserver;

    iput-object p4, p0, Lcom/metamoji/nt/NtNoteController$62;->val$bInsertPagesDirectionData:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 8981
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$62;->val$directions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/direction/NsReceivedDirection;

    .line 8982
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$62;->val$observer:Lcom/metamoji/ns/direction/INsDirectionObserver;

    invoke-interface {v2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->isUnknownDataFound()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 8986
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object v2

    .line 8987
    invoke-static {v2}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8988
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$62;->val$bInsertPagesDirectionData:Ljava/util/List;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8989
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$62;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$62;->val$observer:Lcom/metamoji/ns/direction/INsDirectionObserver;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/nt/NtNoteController;->handleInsertPagesDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    goto :goto_0

    .line 8990
    :cond_1
    invoke-static {v2}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8991
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$62;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$62;->val$observer:Lcom/metamoji/ns/direction/INsDirectionObserver;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/nt/NtNoteController;->handleRemovePagesDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    goto :goto_0

    .line 8992
    :cond_2
    invoke-static {v2}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8993
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$62;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$62;->val$observer:Lcom/metamoji/ns/direction/INsDirectionObserver;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/nt/NtNoteController;->handleMovePagesDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    goto :goto_0

    .line 8994
    :cond_3
    invoke-static {v2}, Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8995
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$62;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$62;->val$observer:Lcom/metamoji/ns/direction/INsDirectionObserver;

    invoke-static {v2, v1, v3}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$mhandleForSchoolGroupListChangeDirection(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    goto :goto_0

    .line 8996
    :cond_4
    invoke-static {v2}, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 8997
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$62;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$62;->val$observer:Lcom/metamoji/ns/direction/INsDirectionObserver;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/nt/NtNoteController;->handleForSchoolPageTypeChangeDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    goto :goto_0

    .line 8999
    :cond_5
    invoke-static {v2}, Lcom/metamoji/nt/direction/note/NtForSchoolPersonalModeTypeChangeDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 9000
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$62;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$62;->val$observer:Lcom/metamoji/ns/direction/INsDirectionObserver;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/nt/NtNoteController;->handleForSchoolPersonalModeTypeChangeDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    goto :goto_0

    .line 9001
    :cond_6
    invoke-static {v2}, Lcom/metamoji/nt/direction/note/NtAllowEveryoneAnswerDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 9002
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$62;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$62;->val$observer:Lcom/metamoji/ns/direction/INsDirectionObserver;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/nt/NtNoteController;->handleForSchoolAllowEveryoneAnswerDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    goto/16 :goto_0

    .line 9004
    :cond_7
    invoke-static {v2}, Lcom/metamoji/nt/direction/note/NtForSchoolHiddenStudentNameChangeDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 9005
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$62;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$62;->val$observer:Lcom/metamoji/ns/direction/INsDirectionObserver;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/nt/NtNoteController;->handleForSchoolHiddenStudentNameChangeDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    goto/16 :goto_0

    .line 9007
    :cond_8
    invoke-static {v2}, Lcom/metamoji/nt/direction/note/NtGroupListAppendUserDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 9008
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$62;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$62;->val$observer:Lcom/metamoji/ns/direction/INsDirectionObserver;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/nt/NtNoteController;->handleGroupListAppendUserDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    goto/16 :goto_0

    .line 9009
    :cond_9
    invoke-static {v2}, Lcom/metamoji/nt/direction/note/NtCheckIfJoinClassNoteDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 9010
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$62;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$62;->val$observer:Lcom/metamoji/ns/direction/INsDirectionObserver;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/nt/NtNoteController;->handleCheckIfJoinClassNoteDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    goto/16 :goto_0

    .line 9012
    :cond_a
    invoke-static {v2}, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 9013
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$62;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$62;->val$observer:Lcom/metamoji/ns/direction/INsDirectionObserver;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/nt/NtNoteController;->handleChangeGroupOfUserDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    goto/16 :goto_0

    .line 9014
    :cond_b
    invoke-static {v2}, Lcom/metamoji/nt/direction/note/NtMakeGroupDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 9015
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$62;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$62;->val$observer:Lcom/metamoji/ns/direction/INsDirectionObserver;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/nt/NtNoteController;->handleMakeGroupDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    goto/16 :goto_0

    .line 9018
    :cond_c
    const-string v2, "received unknown direction"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 9019
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$62;->val$observer:Lcom/metamoji/ns/direction/INsDirectionObserver;

    invoke-interface {v2, v1}, Lcom/metamoji/ns/direction/INsDirectionObserver;->unknownDataFound(Lcom/metamoji/ns/direction/NsReceivedDirection;)V

    goto/16 :goto_0

    :cond_d
    :goto_1
    return-void
.end method
