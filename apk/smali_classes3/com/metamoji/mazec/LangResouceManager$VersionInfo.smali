.class public Lcom/metamoji/mazec/LangResouceManager$VersionInfo;
.super Ljava/lang/Object;
.source "LangResouceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/LangResouceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionInfo"
.end annotation


# instance fields
.field public final mVerMajor:I

.field public final mVerMinor:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;->mVerMajor:I

    .line 49
    iput p2, p0, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;->mVerMinor:I

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/mazec/LangResouceManager$VersionInfo;)I
    .locals 3

    .line 53
    iget v0, p0, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;->mVerMajor:I

    iget v1, p1, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;->mVerMajor:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    if-ne v0, v1, :cond_2

    .line 58
    iget v0, p0, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;->mVerMinor:I

    iget p1, p1, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;->mVerMinor:I

    if-le v0, p1, :cond_1

    return v2

    :cond_1
    if-ne v0, p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method
