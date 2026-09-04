.class public Lcom/metamoji/dvm/fw/bean/DvmTagBean;
.super Lcom/metamoji/dvm/fw/bean/DvmBean;
.source "DvmTagBean.java"


# instance fields
.field private m_color:Ljava/lang/Integer;

.field private m_name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/metamoji/dvm/fw/bean/DvmBean;-><init>()V

    return-void
.end method

.method public static beanWithTagName(Ljava/lang/String;Ljava/lang/Integer;)Lcom/metamoji/dvm/fw/bean/DvmTagBean;
    .locals 1

    .line 7
    new-instance v0, Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;-><init>()V

    .line 8
    iput-object p0, v0, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->m_name:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->m_color:Ljava/lang/Integer;

    return-object v0

    .line 13
    :cond_0
    iput-object p1, v0, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->m_color:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public getColor()Ljava/lang/Integer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->m_color:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public setColor(Ljava/lang/Integer;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->m_color:Ljava/lang/Integer;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->m_name:Ljava/lang/String;

    return-void
.end method
