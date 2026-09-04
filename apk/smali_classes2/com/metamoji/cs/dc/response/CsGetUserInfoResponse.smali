.class public Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;
.super Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
.source "CsGetUserInfoResponse.java"


# instance fields
.field public appAuthKey:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public homeDir:Ljava/lang/String;

.field public isAdmin:Z

.field public key:Ljava/lang/Number;

.field public locale:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public timezone:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;-><init>()V

    return-void
.end method
