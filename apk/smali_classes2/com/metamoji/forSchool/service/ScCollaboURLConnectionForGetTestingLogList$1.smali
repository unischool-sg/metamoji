.class Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList$1;
.super Ljava/util/HashMap;
.source "ScCollaboURLConnectionForGetTestingLogList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;->sendRequest()Z
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
.field final synthetic this$0:Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList$1;->this$0:Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "roomID"

    iget-object p1, p1, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;->roomId:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
