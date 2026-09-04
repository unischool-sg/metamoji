.class Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList$1;
.super Ljava/util/HashMap;
.source "ScCollaboURLConnectionForGetScoreList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->sendRequest()Z
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
.field final synthetic this$0:Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList$1;->this$0:Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "roomIdList"

    iget-object v1, p1, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->roomIdList:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-boolean p1, p1, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->needLog:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "needLog"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
