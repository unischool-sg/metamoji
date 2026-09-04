.class Lcom/metamoji/noteanytime/NoteAnytimeApplication$2;
.super Ljava/lang/Object;
.source "NoteAnytimeApplication.java"

# interfaces
.implements Lcom/metamoji/df/sprite/TypefaceResolver$ICustomResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/NoteAnytimeApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/NoteAnytimeApplication;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/NoteAnytimeApplication;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$2;->this$0:Lcom/metamoji/noteanytime/NoteAnytimeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 0

    .line 344
    invoke-static {p1, p2}, Lcom/metamoji/un/text/FontUtils;->createTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method
