.class public Lcom/metamoji/un/text/VertCharInfo;
.super Ljava/lang/Object;
.source "VertCharInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/text/VertCharInfo$VertCharKind;
    }
.end annotation


# static fields
.field private static final kutouTen:Ljava/lang/String; = "\u3001\u3002\uff0c\uff0e"

.field private static final rotateZenKigou:Ljava/lang/String; = "\u300c\u300d\u300e\u300f\uff08\uff09\u3010\u3011\uff3b\uff3d\uff5b\uff5d\u3014\u3015\u3008\u3009\u300a\u300b\uff1c\uff1e\uff1a\uff1b\uff5c\uff1d\u00f7\uff5e\u301c\u2500\u2014\u2015\u2015\u2212\u30fc\u201c\u201d\u2018\u2019"

.field private static final yousokuOn:Ljava/lang/String; = "\u3041\u3043\u3045\u3047\u3049\u3063\u3083\u3085\u3087\u30a1\u30a3\u30a5\u30a7\u30a9\u30c3\u30e3\u30e5\u30e7"


# instance fields
.field private vertCharKind:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVertCharInfo(C)Lcom/metamoji/un/text/VertCharInfo;
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    .line 27
    sget-object p0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->rotateHan:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    goto :goto_0

    :cond_0
    const/16 v0, 0xa5

    if-ne p0, v0, :cond_1

    .line 29
    sget-object p0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->rotateHan:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    goto :goto_0

    :cond_1
    const v0, 0xff61

    if-lt p0, v0, :cond_2

    const v0, 0xff9f

    if-gt p0, v0, :cond_2

    .line 31
    sget-object p0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->rotateHan:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    goto :goto_0

    .line 32
    :cond_2
    const-string/jumbo v0, "\u300c\u300d\u300e\u300f\uff08\uff09\u3010\u3011\uff3b\uff3d\uff5b\uff5d\u3014\u3015\u3008\u3009\u300a\u300b\uff1c\uff1e\uff1a\uff1b\uff5c\uff1d\u00f7\uff5e\u301c\u2500\u2014\u2015\u2015\u2212\u30fc\u201c\u201d\u2018\u2019"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 33
    sget-object p0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->rotateZen:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    goto :goto_0

    .line 34
    :cond_3
    const-string/jumbo v0, "\u3041\u3043\u3045\u3047\u3049\u3063\u3083\u3085\u3087\u30a1\u30a3\u30a5\u30a7\u30a9\u30c3\u30e3\u30e5\u30e7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4

    .line 35
    sget-object p0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->yousokuOn:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    goto :goto_0

    .line 36
    :cond_4
    const-string/jumbo v0, "\u3001\u3002\uff0c\uff0e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_5

    .line 37
    sget-object p0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->kutouTen:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    goto :goto_0

    :cond_5
    const/16 v0, 0x9

    if-ne p0, v0, :cond_6

    .line 39
    sget-object p0, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->tab:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    goto :goto_0

    :cond_6
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_7

    .line 42
    new-instance v0, Lcom/metamoji/un/text/VertCharInfo;

    invoke-direct {v0}, Lcom/metamoji/un/text/VertCharInfo;-><init>()V

    .line 43
    iput-object p0, v0, Lcom/metamoji/un/text/VertCharInfo;->vertCharKind:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    return-object v0

    :cond_7
    return-object v1
.end method


# virtual methods
.method public getVertCharKind()Lcom/metamoji/un/text/VertCharInfo$VertCharKind;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/un/text/VertCharInfo;->vertCharKind:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    return-object v0
.end method

.method public isRotateChar()Z
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/metamoji/un/text/VertCharInfo;->vertCharKind:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    sget-object v1, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->rotateHan:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/text/VertCharInfo;->vertCharKind:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    sget-object v1, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->rotateZen:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/text/VertCharInfo;->vertCharKind:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    sget-object v1, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->tab:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
