.class Lcom/metamoji/un/text/DownloadableFontManager$SingletonHolder;
.super Ljava/lang/Object;
.source "DownloadableFontManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/DownloadableFontManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/metamoji/un/text/DownloadableFontManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/metamoji/un/text/DownloadableFontManager;
    .locals 1

    sget-object v0, Lcom/metamoji/un/text/DownloadableFontManager$SingletonHolder;->INSTANCE:Lcom/metamoji/un/text/DownloadableFontManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/metamoji/un/text/DownloadableFontManager;

    invoke-direct {v0}, Lcom/metamoji/un/text/DownloadableFontManager;-><init>()V

    sput-object v0, Lcom/metamoji/un/text/DownloadableFontManager$SingletonHolder;->INSTANCE:Lcom/metamoji/un/text/DownloadableFontManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
