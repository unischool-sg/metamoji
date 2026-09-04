.class Lcom/metamoji/forSchool/ScSchoolCommand$14;
.super Ljava/lang/Object;
.source "ScSchoolCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolCommand;->handleScoreList(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$docIdArray:Ljava/util/List;

.field final synthetic val$driveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1912
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$14;->val$driveId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$14;->val$docIdArray:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1916
    new-instance p1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 1917
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$14;->val$driveId:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->DriveId:Ljava/lang/String;

    .line 1918
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$14;->val$docIdArray:Ljava/util/List;

    iput-object v0, p1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->DocIdList:Ljava/util/List;

    .line 1919
    invoke-virtual {p1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->doInBackground()V

    :cond_0
    return-void
.end method
