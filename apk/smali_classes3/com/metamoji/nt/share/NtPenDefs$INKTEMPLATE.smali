.class public Lcom/metamoji/nt/share/NtPenDefs$INKTEMPLATE;
.super Ljava/lang/Object;
.source "NtPenDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/share/NtPenDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "INKTEMPLATE"
.end annotation


# static fields
.field public static final BUILTIN1_ID:Ljava/lang/String; = "com.metamoji.ink.builtin.standard1"

.field public static final BUILTIN2_ID:Ljava/lang/String; = "com.metamoji.ink.builtin.standard2"

.field public static final BUILTIN3_ID:Ljava/lang/String; = "com.metamoji.ink.builtin.standard3"

.field public static final BUILTIN4_ID:Ljava/lang/String; = "com.metamoji.ink.builtin.standard4"

.field public static final BUILTIN5_ID:Ljava/lang/String; = "com.metamoji.ink.gradation"


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

    .line 158
    iput-object p1, p0, Lcom/metamoji/nt/share/NtPenDefs$INKTEMPLATE;->this$0:Lcom/metamoji/nt/share/NtPenDefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
