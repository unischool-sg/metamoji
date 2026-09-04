.class Lcom/metamoji/dvm/DvmUtil$4;
.super Ljava/util/HashMap;
.source "DvmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dvm/DvmUtil;->reverseLink(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;
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
.field final synthetic val$responce:Lcom/metamoji/cs/dc/response/CsReverseLinkResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/response/CsReverseLinkResponse;)V
    .locals 2

    .line 1182
    iput-object p1, p0, Lcom/metamoji/dvm/DvmUtil$4;->val$responce:Lcom/metamoji/cs/dc/response/CsReverseLinkResponse;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1184
    const-string v0, "driveId"

    iget-object v1, p1, Lcom/metamoji/cs/dc/response/CsReverseLinkResponse;->driveId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/dvm/DvmUtil$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    const-string v0, "docId"

    iget-object v1, p1, Lcom/metamoji/cs/dc/response/CsReverseLinkResponse;->docId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/dvm/DvmUtil$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    const-string v0, "pageId"

    iget-object p1, p1, Lcom/metamoji/cs/dc/response/CsReverseLinkResponse;->pageId:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/dvm/DvmUtil$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
