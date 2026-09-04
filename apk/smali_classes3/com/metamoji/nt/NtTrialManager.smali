.class public Lcom/metamoji/nt/NtTrialManager;
.super Ljava/lang/Object;
.source "NtTrialManager.java"


# static fields
.field private static s_sharedInstance:Lcom/metamoji/nt/NtTrialManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/metamoji/nt/NtTrialManager;

    invoke-direct {v0}, Lcom/metamoji/nt/NtTrialManager;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtTrialManager;->s_sharedInstance:Lcom/metamoji/nt/NtTrialManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/nt/NtTrialManager;
    .locals 1

    .line 26
    sget-object v0, Lcom/metamoji/nt/NtTrialManager;->s_sharedInstance:Lcom/metamoji/nt/NtTrialManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/metamoji/nt/NtTrialManager;

    invoke-direct {v0}, Lcom/metamoji/nt/NtTrialManager;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtTrialManager;->s_sharedInstance:Lcom/metamoji/nt/NtTrialManager;

    .line 29
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtTrialManager;->s_sharedInstance:Lcom/metamoji/nt/NtTrialManager;

    return-object v0
.end method


# virtual methods
.method public isTrialMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
