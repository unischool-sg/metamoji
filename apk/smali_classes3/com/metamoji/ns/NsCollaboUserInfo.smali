.class public Lcom/metamoji/ns/NsCollaboUserInfo;
.super Ljava/lang/Object;
.source "NsCollaboUserInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public classNumber:Ljava/lang/String;

.field public dcUserId:Ljava/lang/String;

.field public isMyself:Z

.field public isPrivateLayer:Z

.field public loginName:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public schoolPersonalStatus:Ljava/lang/String;

.field public timestamp:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public userMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/metamoji/ns/NsCollaboUserInfo;
    .locals 1

    .line 25
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboUserInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboUserInfo;->clone()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v0

    return-object v0
.end method
