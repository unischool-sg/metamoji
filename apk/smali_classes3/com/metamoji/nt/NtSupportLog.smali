.class public final Lcom/metamoji/nt/NtSupportLog;
.super Ljava/lang/Object;
.source "NtSupportLog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtSupportLog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/metamoji/nt/NtSupportLog;",
        "",
        "<init>",
        "()V",
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
.field public static final Companion:Lcom/metamoji/nt/NtSupportLog$Companion;

.field private static final FORMATTER_ISO8601:Ljava/time/format/DateTimeFormatter;

.field public static final LOGZIP:Ljava/lang/String; = "errorlog.zip"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/nt/NtSupportLog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/nt/NtSupportLog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/nt/NtSupportLog;->Companion:Lcom/metamoji/nt/NtSupportLog$Companion;

    .line 34
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 35
    sget-object v1, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtSupportLog;->FORMATTER_ISO8601:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFORMATTER_ISO8601$cp()Ljava/time/format/DateTimeFormatter;
    .locals 1

    .line 30
    sget-object v0, Lcom/metamoji/nt/NtSupportLog;->FORMATTER_ISO8601:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static final handleEndSupportLog(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/nt/NtSupportLog;->Companion:Lcom/metamoji/nt/NtSupportLog$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtSupportLog$Companion;->handleEndSupportLog(Landroid/app/Activity;)V

    return-void
.end method

.method public static final handleStartSupportLog(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/nt/NtSupportLog;->Companion:Lcom/metamoji/nt/NtSupportLog$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtSupportLog$Companion;->handleStartSupportLog(Landroid/app/Activity;)V

    return-void
.end method

.method public static final processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/nt/NtSupportLog;->Companion:Lcom/metamoji/nt/NtSupportLog$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtSupportLog$Companion;->processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z

    move-result p0

    return p0
.end method

.method public static final setLoggingView(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/nt/NtSupportLog;->Companion:Lcom/metamoji/nt/NtSupportLog$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtSupportLog$Companion;->setLoggingView(Landroid/app/Activity;)V

    return-void
.end method
