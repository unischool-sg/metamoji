.class public final Lcom/metamoji/ctold/CtFactory;
.super Ljava/lang/Object;
.source "CtFactory.java"


# static fields
.field private static final SINGLETON:Lcom/metamoji/ctold/CtFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/metamoji/ctold/CtFactory;

    invoke-direct {v0}, Lcom/metamoji/ctold/CtFactory;-><init>()V

    sput-object v0, Lcom/metamoji/ctold/CtFactory;->SINGLETON:Lcom/metamoji/ctold/CtFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/metamoji/ctold/CtFactory;
    .locals 1

    .line 27
    sget-object v0, Lcom/metamoji/ctold/CtFactory;->SINGLETON:Lcom/metamoji/ctold/CtFactory;

    return-object v0
.end method


# virtual methods
.method public createDocTagManager(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Lcom/metamoji/ctold/CtDocTagManager;
    .locals 1

    .line 38
    invoke-static {}, Lcom/metamoji/nt/NtDocument;->isAzami()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CT_SQLDB"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Lcom/metamoji/ctold/CtPreOwlDocTagManagerImpl;

    invoke-direct {p1}, Lcom/metamoji/ctold/CtPreOwlDocTagManagerImpl;-><init>()V

    return-object p1

    .line 39
    :cond_1
    :goto_0
    new-instance v0, Lcom/metamoji/ctold/CtDocTagManagerImpl;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/ctold/CtDocTagManagerImpl;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-object v0
.end method
