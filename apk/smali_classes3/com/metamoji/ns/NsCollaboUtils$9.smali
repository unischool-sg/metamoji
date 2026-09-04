.class Lcom/metamoji/ns/NsCollaboUtils$9;
.super Ljava/util/HashMap;
.source "NsCollaboUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboUtils;->createDummyShareTemplateDic()Ljava/util/Map;
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
.field final synthetic val$finalCompanyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 743
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboUtils$9;->val$finalCompanyId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ns/NsCollaboUtils$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const-string v0, "companyId"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ns/NsCollaboUtils$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const-string/jumbo p1, "roomType"

    const-string v0, "formal"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ns/NsCollaboUtils$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "presenterArray"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ns/NsCollaboUtils$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "speakerArray"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ns/NsCollaboUtils$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "visitorArray"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ns/NsCollaboUtils$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
