.class public Lcom/metamoji/nt/NtPDFExportTargetContext;
.super Ljava/lang/Object;
.source "NtPDFExportTargetContext.java"


# instance fields
.field public doWrite:Z

.field public isPrivate:Z

.field public outputTargetSchoolLayerInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public pages:[I

.field public userId:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/metamoji/nt/NtPDFExportTargetContext;->isPrivate:Z

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/metamoji/nt/NtPDFExportTargetContext;->userId:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/metamoji/nt/NtPDFExportTargetContext;->userName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/metamoji/nt/NtPDFExportTargetContext;->outputTargetSchoolLayerInfo:Ljava/util/Map;

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/metamoji/nt/NtPDFExportTargetContext;->doWrite:Z

    return-void
.end method
