.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$1;
.super Ljava/util/HashMap;
.source "ScCollaboBgTaskForGetScoreList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;

.field final synthetic val$classNumber:Ljava/lang/String;

.field final synthetic val$loginName:Ljava/lang/String;

.field final synthetic val$nickName:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$1;->this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;

    iput-object p2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$1;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$1;->val$nickName:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$1;->val$classNumber:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$1;->val$loginName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "userId"

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string p1, "userName"

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    const-string p4, ""

    :goto_0
    const-string p1, "classNo"

    invoke-virtual {p0, p1, p4}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string p1, "loginName"

    invoke-virtual {p0, p1, p5}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
