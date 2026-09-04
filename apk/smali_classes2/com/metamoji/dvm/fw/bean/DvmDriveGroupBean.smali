.class public Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;
.super Lcom/metamoji/dvm/fw/bean/DvmBean;
.source "DvmDriveGroupBean.java"


# instance fields
.field private m_groupId:Ljava/lang/String;

.field private m_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/metamoji/dvm/fw/bean/DvmBean;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/metamoji/dvm/fw/bean/DvmBean;-><init>()V

    .line 17
    const-string v0, "f_groupId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->setGroupId(Ljava/lang/String;)V

    .line 18
    const-string v0, "f_groupName"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->m_groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->m_groupId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->m_name:Ljava/lang/String;

    return-void
.end method
