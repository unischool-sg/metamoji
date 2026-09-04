.class public Lcom/metamoji/cs/CsCloudServiceContext;
.super Ljava/lang/Object;
.source "CsCloudServiceContext.java"


# static fields
.field private static _instance:Lcom/metamoji/cs/CsCloudServiceContext;


# instance fields
.field private m_deviceName:Ljava/lang/String;

.field private m_locale:Ljava/lang/String;

.field private m_productName:Ljava/lang/String;

.field private m_productVersion:Ljava/lang/String;

.field private m_restBasePath:Ljava/lang/String;

.field private m_restHost:Ljava/lang/String;

.field private m_rootServer:Ljava/lang/String;

.field private m_timeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/metamoji/cs/CsCloudServiceContext;

    invoke-direct {v0}, Lcom/metamoji/cs/CsCloudServiceContext;-><init>()V

    sput-object v0, Lcom/metamoji/cs/CsCloudServiceContext;->_instance:Lcom/metamoji/cs/CsCloudServiceContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, "mmjeditor2/2.0"

    iput-object v0, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_restBasePath:Ljava/lang/String;

    .line 94
    const-string v0, "Android-Share-G-ClassRoom"

    iput-object v0, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_productName:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_productVersion:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_locale:Ljava/lang/String;

    .line 112
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_timeZone:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_deviceName:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->restHost:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_restHost:Ljava/lang/String;

    .line 74
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->inputedRootServer:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/cs/CsCloudServiceContext;->setRootServer(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static dcServerURL()Ljava/lang/String;
    .locals 3

    .line 27
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo$BuildOptions;->DIGITAL_CABINET_URL_BASE()Ljava/lang/String;

    move-result-object v0

    .line 30
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v1, :cond_0

    .line 31
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    .line 32
    const-string v2, "DevDigitalCabinetServer"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/metamoji/cs/CsCloudServiceContext;
    .locals 1

    .line 22
    sget-object v0, Lcom/metamoji/cs/CsCloudServiceContext;->_instance:Lcom/metamoji/cs/CsCloudServiceContext;

    return-object v0
.end method


# virtual methods
.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_locale:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_productName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_productVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRestBasePath()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_restBasePath:Ljava/lang/String;

    return-object v0
.end method

.method public getRestHost()Ljava/lang/String;
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_restHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_restHost:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 134
    :goto_0
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v1, :cond_1

    .line 135
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    .line 136
    const-string v2, "DevDigitalCabinetServer"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getRootServer()Ljava/lang/String;
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_rootServer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_rootServer:Ljava/lang/String;

    goto :goto_0

    .line 176
    :cond_0
    sget-object v0, Lcom/metamoji/noteanytime/ModelInfo$BuildOptions;->DIGITAL_CABINET_URL_ROOT:Ljava/lang/String;

    .line 180
    :goto_0
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v1, :cond_1

    .line 182
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    .line 183
    const-string v2, "DevDigitalCabinetRootServer"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 190
    const-string v1, "%s/"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public isCheckMaint()Z
    .locals 3

    .line 156
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 158
    const-string v2, "DevDigitalCabinetServerCheckMaintInfo"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public setRestBasePath(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_restBasePath:Ljava/lang/String;

    return-void
.end method

.method public setRestHost(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_restHost:Ljava/lang/String;

    return-void
.end method

.method public setRootServer(Ljava/lang/String;)V
    .locals 1

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const-string v0, "%s/"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_rootServer:Ljava/lang/String;

    return-void

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/metamoji/cs/CsCloudServiceContext;->m_rootServer:Ljava/lang/String;

    return-void
.end method
