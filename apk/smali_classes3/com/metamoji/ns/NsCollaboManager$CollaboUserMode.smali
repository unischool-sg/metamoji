.class public Lcom/metamoji/ns/NsCollaboManager$CollaboUserMode;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/NsCollaboManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollaboUserMode"
.end annotation


# static fields
.field public static final MODE_CLERK:I = 0x10

.field public static final MODE_GUEST:I = 0x20

.field public static final MODE_OWNER:I = 0x2

.field public static final MODE_PRESENTER:I = 0x4

.field public static final MODE_SCHOOL_TEACHER:I = 0x40

.field public static final MODE_SPEAKER:I = 0x8

.field public static final MODE_VISITOR:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
