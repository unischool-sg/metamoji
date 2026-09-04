.class Lcom/metamoji/cm/CmLog$Logger;
.super Ljava/lang/Object;
.source "CmLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cm/CmLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Logger"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 2

    .line 255
    invoke-static {}, Lcom/metamoji/cm/CmLog;->-$$Nest$sfgetFILELOG_LEVEL()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 256
    invoke-static {v1, p1}, Lcom/metamoji/cm/ErrorInfo;->writeLog(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 266
    invoke-static {}, Lcom/metamoji/cm/CmLog;->-$$Nest$sfgetFILELOG_LEVEL()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 267
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/cm/ErrorInfo;->writeLog(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2

    .line 164
    invoke-static {}, Lcom/metamoji/cm/CmLog;->-$$Nest$sfgetFILELOG_LEVEL()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 165
    invoke-static {v1, p1}, Lcom/metamoji/cm/ErrorInfo;->writeLog(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 175
    invoke-static {}, Lcom/metamoji/cm/CmLog;->-$$Nest$sfgetFILELOG_LEVEL()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 176
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/cm/ErrorInfo;->writeLog(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 185
    const-string v0, "Error"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/cm/CmLog$Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 194
    invoke-static {p1, p2}, Lcom/metamoji/cm/ErrorInfo;->writeError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public varargs error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 203
    invoke-static {}, Lcom/metamoji/cm/CmLog;->-$$Nest$sfgetFILELOG_LEVEL()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 204
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/cm/ErrorInfo;->writeError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 2

    .line 234
    invoke-static {}, Lcom/metamoji/cm/CmLog;->-$$Nest$sfgetFILELOG_LEVEL()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 235
    invoke-static {v1, p1}, Lcom/metamoji/cm/ErrorInfo;->writeLog(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 245
    invoke-static {}, Lcom/metamoji/cm/CmLog;->-$$Nest$sfgetFILELOG_LEVEL()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 246
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/cm/ErrorInfo;->writeLog(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public verbose(Ljava/lang/String;)V
    .locals 2

    .line 276
    invoke-static {}, Lcom/metamoji/cm/CmLog;->-$$Nest$sfgetFILELOG_LEVEL()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 277
    invoke-static {v1, p1}, Lcom/metamoji/cm/ErrorInfo;->writeLog(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 287
    invoke-static {}, Lcom/metamoji/cm/CmLog;->-$$Nest$sfgetFILELOG_LEVEL()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 288
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/cm/ErrorInfo;->writeLog(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 2

    .line 213
    invoke-static {}, Lcom/metamoji/cm/CmLog;->-$$Nest$sfgetFILELOG_LEVEL()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 214
    invoke-static {v1, p1}, Lcom/metamoji/cm/ErrorInfo;->writeLog(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 224
    invoke-static {}, Lcom/metamoji/cm/CmLog;->-$$Nest$sfgetFILELOG_LEVEL()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 225
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/cm/ErrorInfo;->writeLog(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
