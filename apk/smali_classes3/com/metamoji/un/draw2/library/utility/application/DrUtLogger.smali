.class public Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;
.super Ljava/lang/Object;
.source "DrUtLogger.java"


# static fields
.field private static DR_UT_LOGGER_ENABLED:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static error(ILjava/lang/String;)V
    .locals 6

    .line 62
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->getCallerLocation()Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 63
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    move v3, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->log(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public static error(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    if-nez p1, :cond_0

    .line 93
    const-string p1, "Caught an exception"

    :cond_0
    move-object v4, p1

    .line 95
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->getCallerLocation()Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 96
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    move v3, p0

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->log(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/StackTraceElement;)V

    .line 97
    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 6

    .line 57
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->getCallerLocation()Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 58
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v0, 0x1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->log(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private static getCallerLocation()Ljava/lang/StackTraceElement;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    .line 155
    aget-object v0, v0, v1

    return-object v0
.end method

.method public static log(ILjava/lang/String;)V
    .locals 6

    .line 25
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->getCallerLocation()Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 26
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    move v3, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->log(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 6

    .line 20
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->getCallerLocation()Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 21
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v0, 0x0

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->log(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private static log(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/StackTraceElement;)V
    .locals 4

    .line 109
    sget-boolean v0, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->DR_UT_LOGGER_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#Draw"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v1, "|"

    const-string v2, ")"

    if-eqz p1, :cond_3

    .line 114
    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-ltz p3, :cond_2

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 124
    :cond_3
    const-string p1, " (|"

    if-eqz p2, :cond_5

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz p3, :cond_4

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 129
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    if-ltz p3, :cond_6

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_0
    if-eqz p4, :cond_7

    .line 139
    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    if-eqz p5, :cond_8

    .line 142
    const-string p1, "\n\tat "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz p0, :cond_9

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 147
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static setEnable(Z)V
    .locals 0

    .line 13
    sput-boolean p0, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->DR_UT_LOGGER_ENABLED:Z

    return-void
.end method

.method private static simpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2e

    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 160
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
