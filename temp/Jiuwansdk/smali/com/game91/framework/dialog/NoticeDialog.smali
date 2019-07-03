.class public Lcom/game91/framework/dialog/NoticeDialog;
.super Lcom/game91/framework/dialog/DialogWindow;
.source "NoticeDialog.java"


# instance fields
.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private notice:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/game91/framework/dialog/DialogWindow;-><init>()V

    .line 32
    const-string v0, "<p></p>"

    iput-object v0, p0, Lcom/game91/framework/dialog/NoticeDialog;->notice:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/game91/framework/dialog/NoticeDialog;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/game91/framework/dialog/NoticeDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/game91/framework/dialog/NoticeDialog;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method private createContentView()Landroid/view/View;
    .locals 13

    .prologue
    .line 44
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/game91/framework/dialog/NoticeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    .local v2, "layout":Landroid/widget/LinearLayout;
    const/16 v9, 0x11

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 46
    const/high16 v9, 0x35000000

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 47
    new-instance v8, Lcom/game91/framework/widget/TopLayout;

    invoke-virtual {p0}, Lcom/game91/framework/dialog/NoticeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/game91/framework/widget/TopLayout;-><init>(Landroid/content/Context;)V

    .line 48
    .local v8, "topLayout":Lcom/game91/framework/widget/TopLayout;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/game91/framework/widget/TopLayout;->setOrientation(I)V

    .line 50
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 51
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 52
    const v9, -0xff7f01

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 53
    invoke-virtual {v8, v0}, Lcom/game91/framework/widget/TopLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/game91/framework/dialog/NoticeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .local v4, "relativeLayout":Landroid/widget/RelativeLayout;
    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-virtual {v8, v4, v9, v10}, Lcom/game91/framework/widget/TopLayout;->addView(Landroid/view/View;II)V

    .line 58
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/game91/framework/dialog/NoticeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 59
    .local v7, "textView":Landroid/widget/TextView;
    const/16 v9, 0x11

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    .line 62
    const/high16 v9, 0x41880000    # 17.0f

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 63
    const-string v9, "\u6e38\u620f\u516c\u544a"

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const/4 v9, -0x1

    const/high16 v10, 0x42400000    # 48.0f

    invoke-static {v10}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v10

    invoke-virtual {v4, v7, v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 66
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/game91/framework/dialog/NoticeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v1, "imageView":Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v9, 0x42400000    # 48.0f

    invoke-static {v9}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v9

    const/high16 v10, 0x42400000    # 48.0f

    invoke-static {v10}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v10

    invoke-direct {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v5, "rp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xb

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    const/high16 v9, 0x41500000    # 13.0f

    invoke-static {v9}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v9

    const/high16 v10, 0x41500000    # 13.0f

    invoke-static {v10}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v10

    const/high16 v11, 0x41500000    # 13.0f

    invoke-static {v11}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v11

    const/high16 v12, 0x41500000    # 13.0f

    invoke-static {v12}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v12

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 70
    invoke-virtual {v4, v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-virtual {p0}, Lcom/game91/framework/dialog/NoticeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/game91/library/picasso/Picasso;->with(Landroid/content/Context;)Lcom/game91/library/picasso/Picasso;

    move-result-object v9

    const-string v10, "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAYAAACtWK6eAAAVfUlEQVR4Xu2djdHdtBKGrQq4VEBSAUkFkAoCFZBUQKgAqIBQAVABpAKSCkgquKSCm1SgO+9h/eHPxz6WpXclrb2eyWQgPra03sf7KzkMfqhJIMb4hVz8S/n7P8MwPJrccPz/W2N4PTnh7TAMH+S/L/8/hPBm6wL+73kSCHk/81+NEogxQuk/F8WH8j8YhiFV8dmCBDB/D8MAiPDnXQhhhIl9r1NczwHZ+ZhjjIAAlgF/AwQA0fMBYAAOgHkTQsDffiRKwAHZEFSMEQA8FRgABCyG5QMWBcD8IcAAID9WJOCALAhGrMQ3wzB8ZcBClCo3AAEsv7l1uRalAyIyORkUa1A5LDPJnBqQifv04gSWYq+lASwvxbKcNtA/JSAxRsQUz8SF2qs4ZzwfLtivIYRXZ5v8qQCJMSKu+MGtRbaaw6r8EEL4LfsKxn54eECkTvHtMAxwo6xnoHpRL7hccL9+Pnqd5bCAOBhVWDo8KIcDxMGoAsb8JocF5VCAxBjhSiHGcFeqCSeXHjHEKD+3uT3/rocAJMaICvdPs0ZAvrT8iqkSQDvLdyGEaZNl6m+7Os80IFLHABioePvRnwSQHgYoZttZzALi7lR/NKyMyLTbZQ4QaQmB1WjVUs7SzHeTdR1b1xxb6rfO6/nf4W7BmpjqJjYFiFgN5N8tHFjENC5uuvu7tG4gWTq02o+Lr8a/x8VZvcvmhaUg3gQgohS/d2w1AMO45uJtK59bYjLAM65V6RUayOrr0pdFjTdB94DEGBGA/9JZ6hbuEQLQ171naiTDB3cUcsTKx14OxCbPQwiQY7dH14DEGBFroEWkhwP9R5eFRhbefEsCE0sMUPAHDZs9HC9DCN/1MJClMXQJSEcuFbpX8YYzC8Wa4nUGS7cuV3eASJbqz4Yu1XtpxEN79ynWQQgsaP+Htf6s0dscsn7SW5arK0BijHhIiDdaHAi00SZhvvpbIjyJWdCu0yLAByRIBf9aMgfmb7sBpGEKF7EFwDBb7WUqxHgtyYgBFKyhqX10kwruApAYI6wGrEfNw8FIkHZDUODiPk8YouopzQFpAIeDkaFSjUBpDkkzQCQwRDA+3Yoz49El/8RjjGRRrZ/YIEZpmuFqAkhlOJCVQozRTeBH0NPml5CECmKUGlkvtOogw1U9q1gdkMpwYOEO4Kgu2OYaXGEA8iwBCRaqaR9NIKkKSEU4YDWenT1lq62xk4wXWllgobWtSXVIagPyV4WYw61GLTIm96loTdD/9qTWFKsBUiFb9VGsRtfNb7UebKv7SHMprMknimOolt2qAkgFOJCh+spjDUWV3HFpsSZ4UWlW46tAog5IjBH9PejK1TqweVkvHb9aczR53RgjFrdpBvBoS1FdQKcKiHJvFVwqtCR4+rZjfEQHoMRaLhfWlKjpgBog0pWLoFzjABxf9tb5qTHRI1xTdAEFPw1IVLuAVQARH/S/Si3rWM2HeMObCw3RI60qiEs0VjUCkocaMagWIGgh0dh1BHDAcnjhzxAck3oJNpiAJdGARCX9SwdEMTBzOAxCMR+yeBdakNATNlRAJAeO3UfYB76fV7sdnj0Hv55IQCBB4K6x1gS7pdBqYTRAFOMOh+OgaMUYkX1iQ0KNR5iAaMQd70IItdrhD6qG/U5L0d2ixSMUQJSKgR5z9KvbtJEpQkIpIhYDolTvcDhoKtj/hRQheVxaK2MAwnatUAR85HWO/hWbOUKpk6CdnVlMLHa1igBRcK28Qs7UOmPXUqq4F7la2YAI8WglYX7uTLWvxpi+nHK4Cv17yGrB1crqvCgBBPUO5ped6EWeU2rYASatUGzG1rFf54gmCxDZ2QKxB+t4E0LQaE1hjc+vU1kCMUZU25nrSbDpw+5dM3MBYS6dRdzxwPurKmtg57eTzBbcIlbQju+2PN477d2AKATm1NaAvQLw8/uVgELr0u4YdxcgCu0kHnf0q59djIwcj+xuQ9kLCPZA+p4kOWzNg3qHt66TBHrEy8hLGfUR1pZCP4YQoMdJRzIgCtYjK2hKmpWfdCgJkJNCu6zIHkCY1sNdq0OpsP5kyK5WshVJAoRsPdy10tenw92B7GolW5FUQJjWY3cm4XBP2yeUJQFylT3JiqQC8j9SS4kXBLNUw380SoBYQPwQQvh0S7KbgJCpLW4/3pqQ//uxJUAO2De9mRRAsH3PA4LYfeksQYh+iWEgLtX9O4Tw8JZMbwJCrmRi36KsjkpXCpfAVALSSY4XN+O42cmxBQh2h3hKGIVbD4IQ/RL/SoBoRV6FEFa70lcBIVPq1sO1myoBsn5+utbRcQsQ1q7sZq2HrHDDLoDIm2OHlUO4iKJcmBcWu2FeaOUwdxCtyOqqw1uAsIJzU9ZDClL4XMPaRnXY8Aw5dFM9ZDIv9NGtfSoCe1RBUczMi2hFVoP1RUCIO5WYqntIUuKXhJoP3rhIEZp488rzxArQrWwk4MC8aDsTapslYl1ksQSxBgjrwydmGhIzM3abeXRtBdm6fmYdy8waHWJdZLE/cA0Qhnv1PoSw9cbaer5V/r2w16xbSDLhgMyTe5WqPKCNm8QYERuWtsMvullXgBDdq6LtVmoKnhDsdQdJARyj6M0kV2KMrF7BKzdrCRCWe7WaOqup/Cn3ijHGlPM2zukGEgIcl6mGEDY7LQhyK74EMVi/crOWAGG4VzeLL8USIV6AaDExquaQsOAQEZvpnYsxMoraVxs73AOESGJzRUlliKxQTSE50lxSn994HnHu98oSc0BYxUFL7hXaDNgf/an+giAqyFQ3LWWzUPTEsozS496zmwPCMFNmgjtIkmg15w+mGiRKcGA+1oq8DP29Fx7MAWEsjKqmGKWviol5ZgTpS8NRl4UiHB9DCMx9l1mPa/U6JFncW0h1BwgxWDXjXk0AYWXuqkJCUog1hTO3sYbUsxhu1l1yYgoII/4w+ck0xQ+4jMpHtyTKcJj9gFGMEe0/pZ+ZvqvhTQFh+G9JC+HVbW3GDYgWdO3uNEiU4cD4zaR358ImFQ3v4ugpIIz6h5neqyUtrqB4xZBYGGPG+4n2E1Jv1l3byQUQlu9mpfJ662n0rIA9j42m4YQLkTojLrH0CAi+zVH6vQ9Tre3WIHE40skhtcBfvKEREEaAbjb+6N3dcjjS4RCPiNG8eAnUR0CwmuybfcO4OttM1TV1nj0oZg9jSJVXL+dlru2ZD/8SqI+AMD53ZarqmvowWypoy3unyqfH80jdEZeQYQSkuJJ8hAB97WG3UNQW9+xR2XPHxAjUodMsQA4ToPcAicORi8W/v2ME6hdASHljc20JOY+ghuLKuLBxhNZRXIvRGhjzuoRVohjOExYgh8pgNU4BM/Vkfq1TwEHMZF0AYaTEDpfBOiAkp4FDAGGs8/mRBYjpFpOcV3YFdytnWGu/ORUcAgij+H0BhFEDMdfiztA+I5CcDg4BhLHC8GcAUlwDOXKKdwukziE5JRzjMyOket84IFsEJPx7p5CcGg6xIqX1PQogJhdJJej9rlM6g+T0cAggpTsuXgAppywEBESnPzqBxOEQTSSEDx8cEDLWjSFxOCbPkwDI4ICQARHTjm+LaFbDl0btcMyk4oAoKDfrkpUticOx8OAcEJY2K12nEiQOx8rzc0CUFJt1WQeEJcm86zggeXKr8qtKcIxzcSviLlYVvabcpDIcDom7WBS9rXKRRnA4JG5Bquh30U0aw+GQ8NO8Hxm9WFdf5SnSMqM/7gQOh2SiPzHG0t1CKb1YZr5lp8VeZ3A4JCIBShsVJRVm5GOPGoB0CodD8s+WuuV9hr5gKh+bzuE4NSSk/aYvC6YYa9J9yW0+ZzV+ebo6CWm3HtqadN+0oYaal93jVJCQth+9AMJZ3B4CLNHhDyNu1dpzOA0kNM+IBIhvHMd5NTyXy2i2yp8CElJs/cS3Hk1U7AqW405xa94rcfrmTmNlZ1mAHLoW0kJhW9zTHAU3BkxI8V502j9/sKEVLRW15b0tw6Lx+QPG5nGHy2T1oKA9jMEaLKQM1r0P6Pgn2K4b3bTXlScHyw7JPkRjjC+HYfh236+uzr73CTZGqvcw3wjpUSF7HFOhAqr9nBGgXz59MPmIJ2Mf00ME6j0rYs9jU9P2jAszAvRhGP79DDTGEGMs3YUOlzHdcmJBAS2MMUOnaT8h1fXehxAeYFCXLJYAwgjUzX5IJ8b4aBiGv2hP6vpCyTHH1hgqQPI4hPB2axw9/jupgn4J0OeAMAJ1k4unpPMTcFzeGgoHDY7JC00ziQA44A18UJCF6iVjjHiOeNmVHJcAfQ4I6w1q7lshpKzH2gOhw1EJEnPtQ6QWd4j3zoLeuVjiZuGN8UkJesMwqClE4bhWf04K6paury4LRXfrQwjhUy2Za1yXJIuPIQQkrS7HHJA/hmF4Wjj4O/+t8DpVfk6qujaBo4IleRhCQPLGxBFjZOjvqxACvm+4CAgjDsGFzbhZpKrrXIHULcf8hqS35/yyZrojiO7VvWc3tyAIUrETROlRXUFyB6ygWM3mfqS57H2exLnfs5r3AMGgSPWQe2Zq72Rrnk9O7zaDQ8ndMpPuJblXV19LWwKE0cdizc0q3f0C820OBxsSKx9nJcaRV5m7JUBY6d67XHJNi5BzL8Lqs27gIEJiJtlCKg5CdFcW8woQopv1dwjhYY7C1v6NBHjI1uSkuLuDgwDJRxRNrRQKCTsoQmR37SVT/VsDhOVmmenNysxmdQtHISSWsleMTnSIa7EwugYIy816HUJ4Utsi5N5PIEFP2pYleTcMwzMr/UqSiMC8Pt+QDSwH5oV6gokjxvjnMAyMrywvJiQWASG6WbiUtWITqqiwoN8saAgU6NcQAupFpg5xI7E1E3q4ll4Avw3D8MKKWyU6yipLLLpXuMctQFhFQzPB3lzj5c0La4oWHDRimqkq36JXsj6YF14GmJfVzl1GBzpEtZpQugUIi05zVsSUaTjpYImpXUhwtfNjFRAxYYzeFlzKrBU5qf51P21Can6c482i9hYgaNr6nSQtU7EIac5+GQUJkK3HzYzdTUDIwbpbEQVlOeMlidZjNTgf5ZoCCHPlmpm6yBkVz8KcSWvOx6lu1rE2ARErwlhIhUuZqotYUJizjZFY97i3MGpNjqmAMD6yk0zt2R66zzdNAsSWdtwwaYORVECQL8/tVZrPHtdB1dLchgBpj9HP0pCAFDqxVuluOWzBfZJ7zZIAETeLaUXMbQhQ8DD8pwQJkDfWSLIeGPYeQJhWBPf2gJ2gOGe4BDkwT7YeuwBRsCLuap1BuwvnqLBnWbL1yAGEbUXc1SpUoKP/nOxa7bIeuwERK8JqYhyfrZm1B0dXxt7ml7lG59Y0Nuse8x8nxyDTH8YY0f25tbYgVd7IZqENxbNaqRI7wXnkrBUkdrUhQ4oYcwFhreIax+gFxJSndaJzSHvsTiWWlRTKAkRcLVan7zgJj0dOBMCtqZLjDtwqexuqEkCwXgSu1tby1D2PfbePuOfifm7/EiBXyzFhBOaPche7ZQOiFLAjDoEpNLnCrX/163uEsoITa8wZ1fJxskXbTxUBIpC8HobhC6LoAQlaUQ6xvJUol0NfStZ44NseTDiKv5vJAIS1A8pUAcx+wOXQWqw0OclYwXKUfvhmPsLiRXrFgCi5WrisQ6KkkD1dVhGOItdqlBEFECVX6wJJCOFxTw/Ux8KTgCIcxa6VBiDsNpRxjNiH6jnvsfiVepFAjPEX2aeLOaTd7SS3bk6zIGJFmJs8TMftkDBVqPG1xHL8pAAHZkZtXaICIpCw9vWdP0aPSRorNuP2im4VhkcvNtMBUYxHPHBnaGjDayjDQYs7piLSAkQrHhkhgRn1OklDZd97a6lzYI81dioXQ3kv1XJ6w6sKIGJFNOoj43PxivteDW14vlKFfJwRgvIvtbov1AARSJh7as0fMSBBrhsbGPvRqQSktwoBObNCPp2tav+eKiACCXuB1VwVXoYQvutUP049rBgjwND8VASlGHjrIakDIpCwtqlfmwv6wRCX0H3QU2t45uSVg/FxVFW2sq0CSCVIAAfMrZmvI2XqX9c/k2WyKABquVSYfxU4cKNqgAgkzKW6a4qCOgx2rnBrUhElsRrfK7tUmJFKOndNVLUBwVsF7hBrPfvavJAChjXBvfxQloDsWwWrgUV0mge+DYmMVbWXX1VAxIrUggS3c2uiqK4VrQZmUR2O6i7W+KxEsDUsCW4Ja/JDCAEfqfSDJIEYIz5yiheQZqwxjrYJHM0AaWBJcEsAidjE3a4CSMSdQqzB+PRyykjeDMPwVU23ajqo6i7WXCLErwWlCBvnIOUMULxVJVViwzBIqwjAQPG31lEtW7U2oeaAiDXRrpMszd9BSVDzRmBgZM3haOpiLVgS7Yr7mjo4KAuSaQgGRqNeIU94N1xO6cKCjINV2BMpVQ4eo4ikGsQY02eExsMXPfXXdQWIuFvoAkYgzdyQbg8oiE2QncFufKeIU8RaICuF+EK7lrH2LFS7cvcoQFdB+tLAJQ2MlhHmfls5MsIY8AewVCtO5Qx0729Exk+RIZI/ey/BPL9ppurWRLqzINPBKuzRWvJQzcPSGRTjs6Avky15yPPfdg2IuFx4wyGQbuVyLckbPWUABrvS4+3X7RFjhBVGzQJy1FjNlzt3uFTPem8u7R4QgQTV2h5crjVlQMyEPwAH36FoErtILIE+N4AAKGoV8/ZC0q1LZc6CzFyuVqngvQqA8wEMQMEfgIMYBvAUxTLiJgECvDQAAoJq/OkVhrnsuknhpjxUExZkBgmUAlmm1gF8inxvnTPCk3KdEYKUc3s9B1YDLlUT65orFHOAjBONMcKa4NvtPcUmuc/hyL9DrIFmUbzUzB1mAZHYBG9WCB7pSj/6k8ArKfyZshpTMZoGZGJN4H8DFO2FWP2pYJ8jQns6KuLmO6cPAYi7Xd1Q0l2rSKlkDgWIuF3I7iA+wR+PT0o1JO33AAMWHFswFWXp0m5X76zDATKxJg6Kvh4dFoxRdIcFxEFRpePwYJwGkKmaSDs9UsOfqarPcS+OTaKRsj3Ndq+HtyBLuiqbm6G129PDaTAjXYuPGJ1uU75TAjJzvwAKAnq3KvdhgbVA4A0wDhV4p70T/jnr1IDM3C+0sAAWdL2eFRZAASsBKNA/dvrDAVlQAfmeBWBBAfLoxUcU9VDQcygWdMEB2XhHSgv5uJ4Cf1uvrSADBSDG9Sxm20BqmDcHZKeUxboAlHHNRe/uGNymca0KFni567TjmTsgO4S1khEb12UAmHF9RqtWfLSUj+tPAMLbMwfYhY/Wg3SGAG9dQ7bQwSnjYqYRpvFnAGrLZYNLNH3rj4uvcI1LM+ARmgK1n0Xu9f8P8kcaiIBoWSQAAAAASUVORK5CYII="

    invoke-virtual {v9, v10}, Lcom/game91/library/picasso/Picasso;->load(Ljava/lang/String;)Lcom/game91/library/picasso/RequestCreator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/game91/library/picasso/RequestCreator;->centerCrop()Lcom/game91/library/picasso/RequestCreator;

    move-result-object v9

    const/high16 v10, 0x42400000    # 48.0f

    invoke-static {v10}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v10

    const/high16 v11, 0x42400000    # 48.0f

    invoke-static {v11}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/game91/library/picasso/RequestCreator;->resize(II)Lcom/game91/library/picasso/RequestCreator;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/game91/library/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 74
    new-instance v6, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/game91/framework/dialog/NoticeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 75
    .local v6, "scrollView":Landroid/widget/ScrollView;
    const/4 v9, -0x1

    const/high16 v10, 0x43660000    # 230.0f

    invoke-static {v10}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v10

    invoke-virtual {v8, v6, v9, v10}, Lcom/game91/framework/widget/TopLayout;->addView(Landroid/view/View;II)V

    .line 76
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 77
    .restart local v0    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v9, -0x1

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 78
    const/4 v9, 0x1

    const v10, -0x303031

    invoke-virtual {v0, v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 79
    const/16 v9, 0x8

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x4

    const/high16 v11, 0x40400000    # 3.0f

    invoke-static {v11}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v11

    int-to-float v11, v11

    aput v11, v9, v10

    const/4 v10, 0x5

    const/high16 v11, 0x40400000    # 3.0f

    invoke-static {v11}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v11

    int-to-float v11, v11

    aput v11, v9, v10

    const/4 v10, 0x6

    const/high16 v11, 0x40400000    # 3.0f

    invoke-static {v11}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v11

    int-to-float v11, v11

    aput v11, v9, v10

    const/4 v10, 0x7

    const/high16 v11, 0x40400000    # 3.0f

    invoke-static {v11}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v11

    int-to-float v11, v11

    aput v11, v9, v10

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 80
    invoke-virtual {v6, v0}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-virtual {v2, v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 84
    new-instance v9, Lcom/game91/framework/dialog/NoticeDialog$1;

    invoke-direct {v9, p0}, Lcom/game91/framework/dialog/NoticeDialog$1;-><init>(Lcom/game91/framework/dialog/NoticeDialog;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/game91/framework/dialog/NoticeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 95
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {v9}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v9

    const/high16 v10, 0x41800000    # 16.0f

    invoke-static {v10}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v10

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v11}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v11

    const/high16 v12, 0x41800000    # 16.0f

    invoke-static {v12}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v12

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 96
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 97
    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-virtual {v6, v3, v9, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 99
    new-instance v7, Landroid/widget/TextView;

    .end local v7    # "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/game91/framework/dialog/NoticeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 100
    .restart local v7    # "textView":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/game91/framework/dialog/NoticeDialog;->notice:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v9, -0x878788

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 103
    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-virtual {v3, v7, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 105
    return-object v2
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "paramLayoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "paramViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/game91/framework/dialog/DialogWindow;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "rootView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/game91/framework/dialog/NoticeDialog;->createContentView()Landroid/view/View;

    move-result-object v0

    .line 40
    :cond_0
    return-object v0
.end method

.method public setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/game91/framework/dialog/NoticeDialog;
    .locals 0
    .param p1, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/game91/framework/dialog/NoticeDialog;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 110
    return-object p0
.end method

.method public setNotice(Ljava/lang/String;)Lcom/game91/framework/dialog/NoticeDialog;
    .locals 0
    .param p1, "notice"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/game91/framework/dialog/NoticeDialog;->notice:Ljava/lang/String;

    .line 115
    return-object p0
.end method
