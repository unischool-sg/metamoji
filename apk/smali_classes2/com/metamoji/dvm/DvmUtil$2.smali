.class Lcom/metamoji/dvm/DvmUtil$2;
.super Ljava/util/HashMap;
.source "DvmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dvm/DvmUtil;->createLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;
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
.field final synthetic val$responce:Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;)V
    .locals 1

    .line 1110
    iput-object p1, p0, Lcom/metamoji/dvm/DvmUtil$2;->val$responce:Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1112
    const-string v0, "uri"

    iget-object p1, p1, Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;->uri:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/dvm/DvmUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
