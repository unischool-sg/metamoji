.class public Lcom/metamoji/un/sound/UnSoundUnit$ModelDef;
.super Lcom/metamoji/nt/NtUnitController$ModelDef;
.source "UnSoundUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/sound/UnSoundUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelDef"
.end annotation


# static fields
.field public static final AUTHOR_INFO:Ljava/lang/String; = "authorInfo"

.field public static final MEDIA_ID:Ljava/lang/String; = "mediaId"

.field public static final RECORD_ID:Ljava/lang/String; = "recordId"

.field public static final TICKET:Ljava/lang/String; = "ticket"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final VERSION_1:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitController$ModelDef;-><init>()V

    return-void
.end method
