.class public Lcom/metamoji/un/web/UnWebUnit$ContextDef;
.super Lcom/metamoji/un/image/UnImageUnit$ContextDef;
.source "UnWebUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/web/UnWebUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextDef"
.end annotation


# static fields
.field public static final UNITID:Ljava/lang/String; = "unitId"

.field public static final URL:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/metamoji/un/image/UnImageUnit$ContextDef;-><init>()V

    return-void
.end method
