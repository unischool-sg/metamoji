.class Lcom/metamoji/mazec/LangResouceManager$LangInfo;
.super Ljava/lang/Object;
.source "LangResouceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/LangResouceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LangInfo"
.end annotation


# instance fields
.field final mName:Ljava/lang/String;

.field mPurchased:Z

.field mVersion:Lcom/metamoji/mazec/LangResouceManager$VersionInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/metamoji/mazec/LangResouceManager$LangInfo;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method hasResource()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/metamoji/mazec/LangResouceManager$LangInfo;->mVersion:Lcom/metamoji/mazec/LangResouceManager$VersionInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
