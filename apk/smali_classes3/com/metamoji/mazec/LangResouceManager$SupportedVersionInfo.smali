.class public Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;
.super Ljava/lang/Object;
.source "LangResouceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/LangResouceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportedVersionInfo"
.end annotation


# instance fields
.field public final mVer:I

.field public final mVerMax:I

.field public final mVerMin:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;->mVer:I

    .line 38
    iput p2, p0, Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;->mVerMin:I

    .line 39
    iput p3, p0, Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;->mVerMax:I

    return-void
.end method
