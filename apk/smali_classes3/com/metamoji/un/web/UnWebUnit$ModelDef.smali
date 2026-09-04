.class public Lcom/metamoji/un/web/UnWebUnit$ModelDef;
.super Lcom/metamoji/un/image/UnImageUnit$ModelDef;
.source "UnWebUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/web/UnWebUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelDef"
.end annotation


# static fields
.field public static final DEFAULT_URL:Ljava/lang/String; = "https://www.google.com"

.field public static final REQUEST_URL:Ljava/lang/String; = "requestURL"

.field public static final VERSION_1:I = 0x1

.field public static final VERSION_2:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/metamoji/un/image/UnImageUnit$ModelDef;-><init>()V

    return-void
.end method
