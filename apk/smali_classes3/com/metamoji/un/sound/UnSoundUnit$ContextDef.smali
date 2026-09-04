.class public Lcom/metamoji/un/sound/UnSoundUnit$ContextDef;
.super Lcom/metamoji/nt/NtUnitController$ContextDef;
.source "UnSoundUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/sound/UnSoundUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextDef"
.end annotation


# static fields
.field public static final IMPORT_FILE_PATH:Ljava/lang/String; = "importFilePath"

.field public static final RECT:Ljava/lang/String; = "rect"

.field public static final TICKET:Ljava/lang/String; = "ticket"

.field public static final URL:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitController$ContextDef;-><init>()V

    return-void
.end method
