.class public Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;
.super Lcom/metamoji/sd/cs/response/SdResponseResult;
.source "SdPutDocumentDataResult.java"


# instance fields
.field public documentId:Ljava/lang/String;

.field public driveId:Ljava/lang/String;

.field public registeredFromV2:Z

.field public revision:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/metamoji/sd/cs/response/SdResponseResult;-><init>()V

    return-void
.end method
