.class public Lcom/metamoji/ns/NsCollaboDeviceInfo;
.super Ljava/lang/Object;
.source "NsCollaboDeviceInfo.java"


# static fields
.field private static s_sharedInstance:Lcom/metamoji/ns/NsCollaboDeviceInfo;


# instance fields
.field m_confirmEULAVersion:I

.field m_deviceCode:Ljava/lang/String;

.field m_deviceId:Ljava/lang/String;

.field m_latestEULAVersion:I

.field m_nickName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_deviceId:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_deviceCode:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_nickName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_latestEULAVersion:I

    .line 118
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->loadDeviceInfo()V

    return-void
.end method

.method public static clearDeviceInfo()V
    .locals 3

    .line 102
    sget-object v0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->s_sharedInstance:Lcom/metamoji/ns/NsCollaboDeviceInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->setDeviceId(Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->s_sharedInstance:Lcom/metamoji/ns/NsCollaboDeviceInfo;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->setDeviceCode(Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->s_sharedInstance:Lcom/metamoji/ns/NsCollaboDeviceInfo;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->setNickName(Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->s_sharedInstance:Lcom/metamoji/ns/NsCollaboDeviceInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->setConfirmEULAVersion(I)V

    .line 109
    :cond_0
    sput-object v1, Lcom/metamoji/ns/NsCollaboDeviceInfo;->s_sharedInstance:Lcom/metamoji/ns/NsCollaboDeviceInfo;

    return-void
.end method

.method public static getInstance()Lcom/metamoji/ns/NsCollaboDeviceInfo;
    .locals 1

    .line 91
    sget-object v0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->s_sharedInstance:Lcom/metamoji/ns/NsCollaboDeviceInfo;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/metamoji/ns/NsCollaboDeviceInfo;

    invoke-direct {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;-><init>()V

    sput-object v0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->s_sharedInstance:Lcom/metamoji/ns/NsCollaboDeviceInfo;

    .line 94
    :cond_0
    sget-object v0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->s_sharedInstance:Lcom/metamoji/ns/NsCollaboDeviceInfo;

    return-object v0
.end method


# virtual methods
.method public getConfirmEULAVersion()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_confirmEULAVersion:I

    return v0
.end method

.method public getDeviceCode()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_deviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestEULAVersion()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_latestEULAVersion:I

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_nickName:Ljava/lang/String;

    return-object v0
.end method

.method public isConformLatestEULA()Z
    .locals 2

    .line 172
    iget v0, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_confirmEULAVersion:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_latestEULAVersion:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method loadDeviceInfo()V
    .locals 3

    .line 129
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 130
    const-string v1, "CollaboDeviceId"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_deviceId:Ljava/lang/String;

    .line 131
    const-string v1, "CollaboDeviceCode"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_deviceCode:Ljava/lang/String;

    .line 132
    const-string v1, "CollaboNickName"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_nickName:Ljava/lang/String;

    .line 133
    const-string v1, "CollaboConfirmEULAVersion"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_confirmEULAVersion:I

    return-void
.end method

.method public setConfirmEULAVersion(I)V
    .locals 2

    .line 70
    iput p1, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_confirmEULAVersion:I

    .line 71
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 72
    const-string v0, "CollaboConfirmEULAVersion"

    iget v1, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_confirmEULAVersion:I

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setDeviceCode(Ljava/lang/String;)V
    .locals 2

    .line 50
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_deviceCode:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 52
    const-string v0, "CollaboDeviceCode"

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_deviceCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_deviceId:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_deviceId:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 37
    const-string v1, "CollaboDeviceId"

    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_deviceId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 39
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_deviceId:Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_deviceId:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 41
    :cond_1
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->deviceIdInitialized(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 2

    .line 60
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_nickName:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 62
    const-string v0, "CollaboNickName"

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_nickName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public valid()Z
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_deviceCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_deviceCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
