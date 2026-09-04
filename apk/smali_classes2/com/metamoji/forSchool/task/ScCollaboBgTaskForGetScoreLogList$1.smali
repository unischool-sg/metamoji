.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList$1;
.super Ljava/util/ArrayList;
.source "ScCollaboBgTaskForGetScoreLogList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList$1;->this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->RoomId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
