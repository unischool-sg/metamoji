.class Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport$1;
.super Ljava/util/HashMap;
.source "ScCollaboURLConnectionForSetReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport;->sendRequest()Z
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
.field final synthetic this$0:Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport$1;->this$0:Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "roomID"

    iget-object v1, p1, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport;->roomId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "userID"

    iget-object v1, p1, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport;->userId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget p1, p1, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport;->report:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "report"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
