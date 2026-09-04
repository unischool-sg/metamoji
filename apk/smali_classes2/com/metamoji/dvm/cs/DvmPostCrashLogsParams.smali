.class public final Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;
.super Ljava/lang/Object;
.source "DvmPostCrashLogsParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;",
        "",
        "userId",
        "",
        "companyId",
        "keyword",
        "isManual",
        "",
        "logFile",
        "Ljava/io/File;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/io/File;)V",
        "getUserId",
        "()Ljava/lang/String;",
        "getCompanyId",
        "getKeyword",
        "()Z",
        "getLogFile",
        "()Ljava/io/File;",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams$Companion;

.field public static final UPLOAD_METHOD_AUTO:Ljava/lang/String; = "Auto"

.field public static final UPLOAD_METHOD_MANUAL:Ljava/lang/String; = "Manual"


# instance fields
.field private final companyId:Ljava/lang/String;

.field private final isManual:Z

.field private final keyword:Ljava/lang/String;

.field private final logFile:Ljava/io/File;

.field private final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->Companion:Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/io/File;)V
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "companyId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logFile"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->userId:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->companyId:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->keyword:Ljava/lang/String;

    .line 9
    iput-boolean p4, p0, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->isManual:Z

    .line 10
    iput-object p5, p0, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->logFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final getCompanyId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->companyId:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeyword()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogFile()Ljava/io/File;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->logFile:Ljava/io/File;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final isManual()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->isManual:Z

    return v0
.end method
