.class Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;
.super Ljava/lang/Object;
.source "ScScoreListDialog.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;->cellTap(IILandroid/graphics/Rect;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;

.field final synthetic val$finalCoupledColumnPos:I

.field final synthetic val$finalRoomId:Ljava/lang/String;

.field final synthetic val$finalTargetScoreColumnIndex:I

.field final synthetic val$record:Ljava/util/List;

.field final synthetic val$rowIndex:I

.field final synthetic val$targetUserId:Ljava/lang/String;

.field final synthetic val$targetUserName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
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

    .line 626
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->this$1:Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;

    iput p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->val$rowIndex:I

    iput p3, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->val$finalTargetScoreColumnIndex:I

    iput p4, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->val$finalCoupledColumnPos:I

    iput-object p5, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->val$finalRoomId:Ljava/lang/String;

    iput-object p6, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->val$targetUserId:Ljava/lang/String;

    iput-object p7, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->val$record:Ljava/util/List;

    iput-object p8, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->val$targetUserName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 629
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return-void

    .line 636
    :cond_0
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->this$1:Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->val$targetUserId:Ljava/lang/String;

    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->val$targetUserName:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->-$$Nest$mhandleContextMenuStartPersonalMode(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 632
    :cond_1
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->this$1:Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;

    iget-object v0, p1, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->val$rowIndex:I

    iget v2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->val$finalTargetScoreColumnIndex:I

    iget v3, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->val$finalCoupledColumnPos:I

    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->val$finalRoomId:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->val$targetUserId:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;->val$record:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->-$$Nest$mhandleContextMenuSetScore(Lcom/metamoji/forSchool/ui/ScScoreListDialog;IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
