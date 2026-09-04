.class public Lcom/metamoji/nt/NtTextSearchUtil$TextSearchCheckResult;
.super Ljava/lang/Object;
.source "NtTextSearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtTextSearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextSearchCheckResult"
.end annotation


# instance fields
.field public checkRestorePage:Z

.field public hasSearchModel:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextSearchUtil$TextSearchCheckResult;->hasSearchModel:Z

    .line 320
    iput-boolean p2, p0, Lcom/metamoji/nt/NtTextSearchUtil$TextSearchCheckResult;->checkRestorePage:Z

    return-void
.end method
