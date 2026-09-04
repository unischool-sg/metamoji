.class public Lcom/metamoji/nt/share/NtPenDefs$PENTEMPLATE;
.super Ljava/lang/Object;
.source "NtPenDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/share/NtPenDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PENTEMPLATE"
.end annotation


# static fields
.field public static final BUILTIN10_ID:Ljava/lang/String; = "com.metamoji.pen.buildin.markerpen"

.field public static final BUILTIN11_ID:Ljava/lang/String; = "com.metamoji.pen.builtin.shapepen"

.field public static final BUILTIN1_ID:Ljava/lang/String; = "com.metamoji.pen.builtin.standard1"

.field public static final BUILTIN2_ID:Ljava/lang/String; = "com.metamoji.pen.builtin.standard2"

.field public static final BUILTIN3_ID:Ljava/lang/String; = "com.metamoji.pen.builtin.calligraphy1"

.field public static final BUILTIN4_ID:Ljava/lang/String; = "com.metamoji.pen.builtin.calligraphy2"

.field public static final BUILTIN5_ID:Ljava/lang/String; = "com.metamoji.pen.calligraphy.plus"

.field public static final BUILTIN6_ID:Ljava/lang/String; = "com.metamoji.pen.builtin.fountainpen1"

.field public static final BUILTIN7_ID:Ljava/lang/String; = "com.metamoji.pen.builtin.fountainpen2"

.field public static final BUILTIN8_ID:Ljava/lang/String; = "com.metamoji.pen.builtin.fountainpen3"

.field public static final BUILTIN9_ID:Ljava/lang/String; = "com.metamoji.pen.builtin.fountainpen4"


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/share/NtPenDefs;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/share/NtPenDefs;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenDefs$PENTEMPLATE;->this$0:Lcom/metamoji/nt/share/NtPenDefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
